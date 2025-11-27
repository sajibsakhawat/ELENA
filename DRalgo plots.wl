(* ::Package:: *)

(* ::Input:: *)
(*file="C:\\Users\\sajib\\src\\DRalgo\\examples\\ah_pot.m";*)
(**)
(*raw=Import[file,"Text"];*)


(* ::Input:: *)
(*(*find the LAST V[phi_,T_]:=... line (DRalgo always puts at end)*)lines=StringSplit[raw,"\n"];*)
(*potLine=Select[lines,StringContainsQ["V[phi_, T_]"]][[-1]];*)
(**)
(*rhs=StringTrim[StringSplit[potLine,":="][[2]]];*)
(**)
(*Print["Extracted RHS of potential:"];*)
(*Print[rhs];*)


(* ::Input:: *)
(*expr=ToExpression[rhs/. {"\[Phi]"->\[Phi],"Y\[Phi]"->Y\[Phi]}];*)
(**)
(*ClearAll[V];*)
(*V[\[Phi]_,T_]:=expr;*)


(* ::Input:: *)
(*(*tiny floor for logs*)eps=10.^-30;*)
(**)
(*exprSafe=expr/. {(*sqrt(x)->sqrt(|x|)*)Sqrt[x_]:>Sqrt[Abs[x]],(*log(x)->log(max(|x|,eps))*)Log[x_]:>Log[Max[Abs[x],eps]],(*any half-integer power x^(n/2)-> |x|^(n/2)*)Power[x_,p_Rational]/;Denominator[p]==2:>Power[Abs[x],p]};*)
(**)


(* ::Input:: *)
(*Clear[V];*)
(*V[\[Phi]_,T_]:=exprSafe;*)
(**)


(* ::Input:: *)
(*(*4D input couplings*)g1Four=0.54;*)
(*lam4=1.65*10^-3;*)
(*m0sq4=-(130.^2);*)
(*Yphi4=1.0;*)
(**)
(*(*simple 4D->3D matching,as in Python*)*)
(*g1sq3[T_]:=g1Four^2*T;*)
(*lam3[T_]:=lam4*T;*)
(*msq3[T_]:=m0sq4+(0.30*g1Four^2+0.10*lam4)*T^2;*)
(*mu3USfun[T_]:=Max[g1Four*T,1.0];*)
(*g13[T_]:=Sqrt[g1sq3[T]];*)
(**)
(**)
(*ClearAll[parRules];*)
(**)


(* ::Input:: *)
(*parRules[T_]:={g1->g13[T],\[Lambda]->lam3[T],msq->msq3[T],Y\[Phi]->Yphi4,\[Mu]3US->mu3USfun[T]};*)
(**)


(* ::Input:: *)
(*ClearAll[Vnum,dVnum];*)
(**)
(*Vnum[phi_?NumericQ,T_?NumericQ]:=Module[{ex},ex=exprSafe/. parRules[T]/. \[Phi]->phi;*)
(*N[ex]];*)
(**)
(*dVnum[phi_?NumericQ,T_?NumericQ]:=Module[{h},h=10^-3*Max[1.,Abs[phi]]+10^-5;*)
(*(Vnum[phi+h,T]-Vnum[phi-h,T])/(2 h)];*)
(**)


(* ::Input:: *)
(*Vnum[10.,0.]*)
(*Vnum[10.,150.]*)
(**)
(**)


(* ::Input:: *)
(*Vnum[10,150]*)
(*dVnum[10,150]*)
(**)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*vev=500.;*)
(*phiMin=0.;*)
(*phiMax=1.1*vev;*)
(*step=1.;   (*sampling resolution for ListLinePlot*)*)
(**)
(*Manipulate[Module[{vPlot,dVdata,dVPlot},(*1) V vs phi (standard Plot)*)vPlot=Plot[Vnum[\[Phi],T],{\[Phi],phiMin,phiMax},PlotRange->All,PlotPoints->200,AxesLabel->{"\[Phi]","V(\[Phi],T)"},PlotLabel->Row[{"V(\[Phi],T) at  T = ",NumberForm[T,{5,1}]," MeV"}],ImageSize->400];*)
(*(*2) Sample derivative explicitly,then ListLinePlot*)dVdata=Table[{phi,dVnum[phi,T]},{phi,1.,phiMax,step}];*)
(*dVPlot=ListLinePlot[dVdata,PlotRange->All,AxesLabel->{"\[Phi]","dV/d\[Phi] (\[Phi],T)"},PlotLabel->Row[{"dV/d\[Phi] at  T = ",NumberForm[T,{5,1}]," MeV"}],ImageSize->300];*)
(*GraphicsRow[{vPlot,dVPlot},Spacings->2]],{{T,0.},0.,3.5*vev,Appearance->"Labeled"}]*)
(**)


(* ::Input:: *)
(**)
(**)


(* ::Input:: *)
(**)
(**)
(**)


(* ::Message:: *)
(*PacletInstall::notavail*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(**)
(**)


(* ::Input:: *)
(**)


(* ::Input:: *)
(**)


(* ::Input:: *)
(**)


(* ::Input:: *)
(**)


(* ::Input:: *)
(**)


(* ::Input:: *)
(**)
(**)
(**)
(**)


(* ::Input:: *)
(**)
