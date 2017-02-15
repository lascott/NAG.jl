using NAG
using Base.Test

# --------------------------------------------
@testset "G01 – Simple Calculations on Statistical Data" begin
# --------------------------------------------  

    # --------------------------------------------

    fn_type_str = :"return double, inputs double, NagError"
    NErr = last_nag_error()
   
    for myfn in (:nag_deviates_landau,)
    @eval begin
      foo = [1 2];
      pifoo = 3.14159265358*foo;
      @testset $fn_type_str begin	
        @inferred NAG.$(myfn)(0.0)
        @test NAG.$(myfn)(0.0) != 3.14159265358
        @test broadcast(NAG.$(myfn),foo) != pifoo
      end
    end
    end

    # --------------------------------------------

    fn_type_str = :"return double, inputs double"
    for myfn in (:nag_prob_landau,:nag_mills_ratio,:nag_prob_density_landau,:nag_moment_1_landau,
        :nag_moment_2_landau,:nag_prob_der_landau,)
    @eval begin
	    foo = [1 2];
	    pifoo = 3.14159265358*foo
      @testset $fn_type_str begin
        @inferred NAG.$(myfn)(0.0)
        @test NAG.$(myfn)(0.0) != 3.14159265358
        @test broadcast(NAG.$(myfn),foo) != pifoo
      end
    end
    end

end

# --------------------------------------------
@testset "S - Approximation of special fns tests" begin
# --------------------------------------------
  
    # --------------------------------------------

    fn_type_str = :"return double, inputs double, NagError"
    NErr = last_nag_error()
   
    for myfn in (:nag_shifted_log ,:nag_sinh ,:nag_cosh ,:nag_arctanh ,:nag_arccosh ,:nag_exp_integral ,:nag_cos_integral ,:nag_gamma ,:nag_log_gamma ,:nag_polygamma_fun ,:nag_scaled_log_gamma ,:nag_erfcx ,:nag_bessel_y0 ,:nag_bessel_y1 ,:nag_bessel_j0 ,:nag_bessel_j1 ,:nag_airy_ai ,:nag_airy_bi ,:nag_airy_ai_deriv ,:nag_airy_bi_deriv ,:nag_bessel_k0 ,:nag_bessel_k1 ,:nag_bessel_i0 ,:nag_bessel_i1 ,:nag_bessel_k0_scaled ,:nag_bessel_k1_scaled ,:nag_kelvin_ber ,:nag_kelvin_bei ,:nag_kelvin_ker ,:nag_kelvin_kei
        )
    @eval begin
      foo = [1 2];
	    pifoo = 3.14159265358*foo;
      @testset $fn_type_str begin
        @inferred NAG.$(myfn)(0.0)
        @test NAG.$(myfn)(0.0) != 3.14159265358
        @test broadcast(NAG.$(myfn),foo) != pifoo
      end
    end
    end

    @test_approx_eq_eps NAG.nag_shifted_log(0.125) 0.11778 1.0e-5
    @test_approx_eq NAG.nag_shifted_log(0) 0.0

    # --------------------------------------------

    fn_type_str = :"return double, inputs double"
    for myfn in (:nag_tanh ,:nag_arcsinh ,:nag_sin_integral ,:nag_cumul_normal ,:nag_cumul_normal_complem ,:nag_erfc ,:nag_erf ,:nag_dawson ,:nag_bessel_i0_scaled ,:nag_bessel_i1_scaled ,:nag_fresnel_s ,:nag_fresnel_c
        )
    @eval begin
	    foo = [1 2];
	    pifoo = 3.14159265358*foo
      @testset $fn_type_str begin
        @inferred NAG.$(myfn)(0.0)
        @test NAG.$(myfn)(0.0) != 3.14159265358
        @test broadcast(NAG.$(myfn),foo) != pifoo
      end
    end
    end

    # --------------------------------------------

    fn_type_str = :"return complex, inputs complex, NagError"
    for myfn in (:nag_complex_log_gamma ,:nag_complex_erfc 
        )
    @eval begin
      @testset $fn_type_str begin
        @inferred NAG.$(myfn)(0.0 + 0.0im)
        @test NAG.$(myfn)(0.0 + 0.0im) != 3.14159265358 + 0.0im
      end
    end
    end

    # --------------------------------------------

    fn_type_str = :"return double, inputs double, integer, NagError"
    for myfn in (:nag_real_polygamma,
        )
    @eval begin
      @testset $fn_type_str begin
        @inferred NAG.$(myfn)(2.0, 2)
        @test NAG.$(myfn)(2.0, 2) != 3.14159265358
      end
    end
    end

    # --------------------------------------------

    fn_type_str = :"return complex, inputs complex, integer, NagError"
    for myfn in (:nag_complex_polygamma,
        )
    @eval begin
      @testset $fn_type_str begin
        @inferred NAG.$(myfn)(0.0 + 0.0im, 2)
        @test NAG.$(myfn)(0.0 + 0.0im, 2) != 3.14159265358 + 0.0im
      end
    end
    end
    
end

