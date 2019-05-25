import statistics as st

def coeff(i):
    res = 10*(st.mediana([C[i],G[i],D[i],M[i]]))/10*C[i]
    + B[i]/10 + (0.65*E[i]+0.35*L[i])/10*C[i] +
    F[i]/10*C[i] + st.mediana([J[i],H[i]])/10*C[i]
    + K[i]/10*C[i] + N[i]/10*C[i]
    
    return res
