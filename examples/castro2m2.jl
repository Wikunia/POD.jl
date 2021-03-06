function castro2m2(;verbose=false, solver=nothing, convhull=true, sos2=true, sos2_alter=false, presolve=0, delta=16)

	if solver == nothing
		m = Model(solver=PODSolver(nlp_local_solver=IpoptSolver(print_level=0),
								   mip_solver=GurobiSolver(OutputFlag=0),
								   log_level=100,
								   rel_gap=0.0001,
								   bilinear_convexhull=convhull,
								   convhull_formulation_sos2=sos2,
								   convhull_formulation_sos2aux=sos2_alter,
								   discretization_ratio=delta,
								   presolve_bt_width_tol=1e-3,
								   presolve_bt_output_tol=1e-1,
								   presolve_bound_tightening=(presolve>0),
	                               presolve_bound_tightening_algo=1,
								   discretization_var_pick_algo=0))
	else
		m = Model(solver=solver)
	end

	@variable(m, x[1:42])

    setlowerbound(x[36], 0.0)
    setlowerbound(x[4], 0.0)
    setlowerbound(x[16], 0.0)
    setlowerbound(x[6], 0.0)
    setlowerbound(x[27], 0.0)
    setlowerbound(x[14], 0.0)
    setlowerbound(x[32], 0.0)
    setlowerbound(x[17], 0.0)
    setlowerbound(x[3], 0.0)
    setlowerbound(x[25], 0.0)
    setlowerbound(x[38], 0.0)
    setlowerbound(x[30], 0.0)
    setlowerbound(x[26], 0.0)
    setlowerbound(x[23], 0.0)
    setlowerbound(x[34], 0.0)
    setlowerbound(x[11], 0.0)
    setlowerbound(x[29], 0.0)
    setlowerbound(x[22], 0.0)
    setlowerbound(x[12], 0.0)
    setlowerbound(x[5], 0.0)
    setlowerbound(x[19], 0.0)
    setlowerbound(x[37], 0.0)
    setlowerbound(x[40], 0.0)
    setlowerbound(x[2], 0.0)
    setlowerbound(x[20], 0.0)
    setlowerbound(x[24], 0.0)
    setlowerbound(x[41], 0.0)
    setlowerbound(x[39], 0.0)
    setlowerbound(x[31], 0.0)
    setlowerbound(x[18], 0.0)
    setlowerbound(x[9], 0.0)
    setlowerbound(x[15], 0.0)
    setlowerbound(x[1], 0.0)
    setlowerbound(x[7], 0.0)
    setlowerbound(x[8], 0.0)
    setlowerbound(x[13], 0.0)
    setlowerbound(x[33], 0.0)
    setlowerbound(x[21], 0.0)
    setlowerbound(x[28], 0.0)
    setlowerbound(x[35], 0.0)
    setlowerbound(x[10], 0.0)
    setupperbound(x[1],1.0e6)
    setupperbound(x[2],1.0e6)
    setupperbound(x[3],1.0e6)
    setupperbound(x[4],1.0e6)
    setupperbound(x[5],1.0e6)
    setupperbound(x[6],1.0e6)
    setupperbound(x[7],1.0e6)
    setupperbound(x[8],1.0e6)
    setupperbound(x[9],1.0e6)
    setupperbound(x[10],1.0e6)
    setupperbound(x[11],1.0e6)
    setupperbound(x[12],1.0e6)
    setupperbound(x[13],1.0e6)
    setupperbound(x[14],1.0e6)
    setupperbound(x[15],1.0e6)
    setupperbound(x[16],1.0e6)
    setupperbound(x[17],1.0e6)
    setupperbound(x[18],1.0e6)
    setupperbound(x[19],1.0e6)
    setupperbound(x[20],1.0e6)
    setupperbound(x[21],1.0e6)
    setupperbound(x[22],1.0e6)
    setupperbound(x[23],1.0e6)
    setupperbound(x[24],1.0e6)
    setupperbound(x[25],1.0e6)
    setupperbound(x[26],1.0e6)
    setupperbound(x[27],1.0e6)
    setupperbound(x[28],1.0e6)
    setupperbound(x[29],1.0e6)
    setupperbound(x[30],1.0e6)
    setupperbound(x[31],1.0e6)
    setupperbound(x[32],1.0e6)
    setupperbound(x[33],1.0e6)
    setupperbound(x[34],1.0e6)
    setupperbound(x[35],1.0e6)
    setupperbound(x[36],1.0e6)
    setupperbound(x[37],1.0e6)
    setupperbound(x[38],1.0e6)
    setupperbound(x[39],1.0e6)
    setupperbound(x[40],1.0e6)
    setupperbound(x[41],1.0e6)

    @objective(m, Min, x[42])

    @NLconstraint(m, e31,x[28]*x[30]-x[16]==0.0)
    @NLconstraint(m, e32,x[28]*x[31]-x[17]==0.0)
    @NLconstraint(m, e33,x[29]*x[32]-x[18]==0.0)
    @NLconstraint(m, e34,x[29]*x[33]-x[19]==0.0)
    @NLconstraint(m, e35,x[28]*x[36]-x[22]==0.0)
    @NLconstraint(m, e36,x[29]*x[37]-x[23]==0.0)
    @NLconstraint(m, e37,x[14]*x[30]-x[1]==0.0)
    @NLconstraint(m, e38,x[14]*x[31]-x[2]==0.0)
    @NLconstraint(m, e39,x[15]*x[32]-x[3]==0.0)
    @NLconstraint(m, e40,x[15]*x[33]-x[4]==0.0)
    @NLconstraint(m, e41,x[14]*x[36]-x[7]==0.0)
    @NLconstraint(m, e42,x[15]*x[37]-x[8]==0.0)

    @constraint(m, e1, -x[14]-x[15]+x[42]==0.0)
    @constraint(m, e2, -x[5]-x[9]-x[10]==-60.0)
    @constraint(m, e3, -x[6]-x[11]-x[12]==-20.0)
    @constraint(m, e4, -x[1]-x[3]-x[9]-x[11]+x[14]==0.0)
    @constraint(m, e5, -x[2]-x[4]-x[10]-x[12]+x[15]==0.0)
    @constraint(m, e6, -x[1]-x[2]-x[7]+x[14]==0.0)
    @constraint(m, e7, -x[3]-x[4]-x[8]+x[15]==0.0)
    @constraint(m, e8, -x[5]-x[6]-x[7]-x[8]+x[13]==0.0)
    @constraint(m, e9, -x[20]-x[24]-x[25]==-24000.0)
    @constraint(m, e10, -x[21]-x[26]-x[27]==-16000.0)
    @constraint(m, e11, -x[24]+24000*x[38]==0.0)
    @constraint(m, e12, -x[25]+24000*x[39]==0.0)
    @constraint(m, e13, -x[26]+16000*x[40]==0.0)
    @constraint(m, e14, -x[27]+16000*x[41]==0.0)
    @constraint(m, e15, -x[20]+24000*x[34]==0.0)
    @constraint(m, e16, -x[21]+16000*x[35]==0.0)
    @constraint(m, e17, -x[9]+60*x[38]==0.0)
    @constraint(m, e18, -x[10]+60*x[39]==0.0)
    @constraint(m, e19, -x[11]+20*x[40]==0.0)
    @constraint(m, e20, -x[12]+20*x[41]==0.0)
    @constraint(m, e21, -x[5]+60*x[34]==0.0)
    @constraint(m, e22, -x[6]+20*x[35]==0.0)
    @constraint(m, e23, x[34]+x[38]+x[39]==1.0)
    @constraint(m, e24, x[35]+x[40]+x[41]==1.0)
    @constraint(m, e25, -200*x[14]+x[16]+x[18]+x[24]+x[26]<=0.0)
    @constraint(m, e26, -1000*x[15]+x[17]+x[19]+x[25]+x[27]<=0.0)
    @constraint(m, e27, 0.01*x[16]+0.01*x[18]+0.01*x[24]+0.01*x[26]-x[28]==0.0)
    @constraint(m, e28, 0.2*x[17]+0.2*x[19]+0.2*x[25]+0.2*x[27]-x[29]==0.0)
    @constraint(m, e29, -x[16]-x[17]-x[22]+x[28]==0.0)
    @constraint(m, e30, -x[18]-x[19]-x[23]+x[29]==0.0)
    @constraint(m, e43, x[30]+x[31]+x[36]==1.0)
    @constraint(m, e44, x[32]+x[33]+x[37]==1.0)
    @constraint(m, e45, -10*x[13]+x[20]+x[21]+x[22]+x[23]<=0.0)

    if verbose
        print(m)
    end

    return m
end
