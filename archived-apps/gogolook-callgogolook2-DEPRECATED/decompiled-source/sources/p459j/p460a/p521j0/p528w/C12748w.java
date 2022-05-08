package p459j.p460a.p521j0.p528w;

import gogolook.callgogolook2.gson.RowInfo;
import java.util.ArrayList;
import java.util.List;
import p459j.p460a.p521j0.p528w.AbstractC12741t;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.j0.w.w */
/* loaded from: classes3-dex2jar.jar:j/a/j0/w/w.class */
public final class C12748w implements AbstractC12746u {

    /* renamed from: a */
    public RowInfo.Primary f28750a;

    /* renamed from: b */
    public RowInfo.Secondary f28751b;

    /* renamed from: c */
    public List<RowInfo.MetaphorType> f28752c;

    @Override // p459j.p460a.p521j0.p528w.AbstractC12746u
    /* renamed from: a */
    public List<RowInfo.MetaphorType> mo5444a() {
        List<RowInfo.MetaphorType> list = this.f28752c;
        if (list != null) {
            return list;
        }
        C15149k.m373d("metaphorTypes");
        throw null;
    }

    @Override // p459j.p460a.p521j0.p528w.AbstractC12746u
    /* renamed from: a */
    public void mo5443a(AbstractC12741t tVar) {
        C15149k.m377b(tVar, "numberDisplayInfo");
        this.f28750a = new RowInfo.Primary();
        this.f28751b = new RowInfo.Secondary();
        this.f28752c = new ArrayList();
        RowInfo.Primary primary = this.f28750a;
        if (primary != null) {
            primary.name = tVar.mo5449d().m5446a();
            primary.isRed = tVar.mo5449d().m5445b();
            RowInfo.Secondary secondary = this.f28751b;
            if (secondary != null) {
                secondary.name = tVar.mo5450c().m5448a();
                secondary.isRed = tVar.mo5450c().m5447b();
                if (tVar.f28723i) {
                    RowInfo.Secondary secondary2 = this.f28751b;
                    if (secondary2 != null) {
                        secondary2.type = RowInfo.Secondary.Type.COO_DESC;
                    } else {
                        C15149k.m373d("secondary");
                        throw null;
                    }
                } else {
                    RowInfo.Secondary secondary3 = this.f28751b;
                    if (secondary3 != null) {
                        secondary3.type = RowInfo.Secondary.Type.NAME_DESC;
                    } else {
                        C15149k.m373d("secondary");
                        throw null;
                    }
                }
                AbstractC12741t.EnumC12744c cVar = tVar.f28715a;
                if (cVar == AbstractC12741t.EnumC12744c.LOADING) {
                    m5438c(tVar);
                } else if (cVar == AbstractC12741t.EnumC12744c.ERROR) {
                    m5440b(tVar);
                } else {
                    AbstractC12741t.EnumC12745d dVar = tVar.f28716b;
                    if (dVar != null) {
                        switch (C12747v.f28747a[dVar.ordinal()]) {
                            case 1:
                                RowInfo.Primary primary2 = this.f28750a;
                                if (primary2 != null) {
                                    primary2.type = RowInfo.Primary.Type.SPOOF;
                                    List<RowInfo.MetaphorType> list = this.f28752c;
                                    if (list != null) {
                                        list.add(RowInfo.MetaphorType.SPOOF);
                                        return;
                                    } else {
                                        C15149k.m373d("metaphorTypes");
                                        throw null;
                                    }
                                } else {
                                    C15149k.m373d("primary");
                                    throw null;
                                }
                            case 2:
                            case 3:
                                RowInfo.Primary primary3 = this.f28750a;
                                if (primary3 != null) {
                                    primary3.type = RowInfo.Primary.Type.WHOSCALLCARD_V2_V3;
                                    List<RowInfo.MetaphorType> list2 = this.f28752c;
                                    if (list2 != null) {
                                        list2.add(RowInfo.MetaphorType.WHOSCALLCARD_V2_V3);
                                        return;
                                    } else {
                                        C15149k.m373d("metaphorTypes");
                                        throw null;
                                    }
                                } else {
                                    C15149k.m373d("primary");
                                    throw null;
                                }
                            case 4:
                                RowInfo.Primary primary4 = this.f28750a;
                                if (primary4 != null) {
                                    primary4.type = RowInfo.Primary.Type.CONTACT;
                                    List<RowInfo.MetaphorType> list3 = this.f28752c;
                                    if (list3 != null) {
                                        list3.add(RowInfo.MetaphorType.CONTACT);
                                        return;
                                    } else {
                                        C15149k.m373d("metaphorTypes");
                                        throw null;
                                    }
                                } else {
                                    C15149k.m373d("primary");
                                    throw null;
                                }
                            case 5:
                                RowInfo.Primary primary5 = this.f28750a;
                                if (primary5 != null) {
                                    primary5.type = RowInfo.Primary.Type.MYTAG;
                                    m5442a(tVar, RowInfo.MetaphorType.INFO);
                                    return;
                                }
                                C15149k.m373d("primary");
                                throw null;
                            case 6:
                                RowInfo.Primary primary6 = this.f28750a;
                                if (primary6 != null) {
                                    primary6.type = RowInfo.Primary.Type.NOTE;
                                    m5442a(tVar, RowInfo.MetaphorType.INFO);
                                    return;
                                }
                                C15149k.m373d("primary");
                                throw null;
                            case 7:
                                RowInfo.Primary primary7 = this.f28750a;
                                if (primary7 != null) {
                                    primary7.type = RowInfo.Primary.Type.CS;
                                    m5442a(tVar, RowInfo.MetaphorType.INFO);
                                    return;
                                }
                                C15149k.m373d("primary");
                                throw null;
                            case 8:
                                RowInfo.Primary primary8 = this.f28750a;
                                if (primary8 != null) {
                                    primary8.type = RowInfo.Primary.Type.WHOSCALLCARD_V1;
                                    m5442a(tVar, RowInfo.MetaphorType.WHOSCALLCARD_V1);
                                    return;
                                }
                                C15149k.m373d("primary");
                                throw null;
                            case 9:
                                RowInfo.Primary primary9 = this.f28750a;
                                if (primary9 != null) {
                                    primary9.type = RowInfo.Primary.Type.MASSES;
                                    m5442a(tVar, RowInfo.MetaphorType.INFO);
                                    return;
                                }
                                C15149k.m373d("primary");
                                throw null;
                            case 10:
                                RowInfo.Primary primary10 = this.f28750a;
                                if (primary10 != null) {
                                    primary10.type = RowInfo.Primary.Type.MYSPAM;
                                    List<RowInfo.MetaphorType> list4 = this.f28752c;
                                    if (list4 != null) {
                                        list4.add(RowInfo.MetaphorType.SPAM);
                                        return;
                                    } else {
                                        C15149k.m373d("metaphorTypes");
                                        throw null;
                                    }
                                } else {
                                    C15149k.m373d("primary");
                                    throw null;
                                }
                            case 11:
                                RowInfo.Primary primary11 = this.f28750a;
                                if (primary11 != null) {
                                    primary11.type = RowInfo.Primary.Type.SPAM;
                                    List<RowInfo.MetaphorType> list5 = this.f28752c;
                                    if (list5 != null) {
                                        list5.add(RowInfo.MetaphorType.SPAM);
                                        return;
                                    } else {
                                        C15149k.m373d("metaphorTypes");
                                        throw null;
                                    }
                                } else {
                                    C15149k.m373d("primary");
                                    throw null;
                                }
                        }
                    }
                    RowInfo.Primary primary12 = this.f28750a;
                    if (primary12 != null) {
                        primary12.type = RowInfo.Primary.Type.NUMBER;
                        if (tVar.f28715a == AbstractC12741t.EnumC12744c.NO_INFO && !tVar.f28723i) {
                            RowInfo.Secondary secondary4 = this.f28751b;
                            if (secondary4 != null) {
                                secondary4.type = RowInfo.Secondary.Type.NO_INFO;
                            } else {
                                C15149k.m373d("secondary");
                                throw null;
                            }
                        }
                        List<RowInfo.MetaphorType> list6 = this.f28752c;
                        if (list6 != null) {
                            list6.add(RowInfo.MetaphorType.NOINFO);
                        } else {
                            C15149k.m373d("metaphorTypes");
                            throw null;
                        }
                    } else {
                        C15149k.m373d("primary");
                        throw null;
                    }
                }
            } else {
                C15149k.m373d("secondary");
                throw null;
            }
        } else {
            C15149k.m373d("primary");
            throw null;
        }
    }

    /* renamed from: a */
    public final void m5442a(AbstractC12741t tVar, RowInfo.MetaphorType metaphorType) {
        List<RowInfo.MetaphorType> list = this.f28752c;
        if (list != null) {
            RowInfo.MetaphorType metaphorType2 = metaphorType;
            if (tVar.f28717c.m28329f0()) {
                metaphorType2 = metaphorType;
                if (!tVar.f28717c.m28292u0()) {
                    metaphorType2 = RowInfo.MetaphorType.SPAM;
                }
            }
            list.add(metaphorType2);
            return;
        }
        C15149k.m373d("metaphorTypes");
        throw null;
    }

    @Override // p459j.p460a.p521j0.p528w.AbstractC12746u
    /* renamed from: b */
    public RowInfo.Primary mo5441b() {
        RowInfo.Primary primary = this.f28750a;
        if (primary != null) {
            return primary;
        }
        C15149k.m373d("primary");
        throw null;
    }

    /* renamed from: b */
    public final void m5440b(AbstractC12741t tVar) {
        RowInfo.Secondary secondary = this.f28751b;
        if (secondary != null) {
            secondary.type = RowInfo.Secondary.Type.ERROR;
            AbstractC12741t.EnumC12745d dVar = tVar.f28716b;
            if (dVar != null && C12747v.f28749c[dVar.ordinal()] == 1) {
                RowInfo.Primary primary = this.f28750a;
                if (primary != null) {
                    primary.type = RowInfo.Primary.Type.CONTACT;
                    List<RowInfo.MetaphorType> list = this.f28752c;
                    if (list != null) {
                        list.add(RowInfo.MetaphorType.CONTACT);
                    } else {
                        C15149k.m373d("metaphorTypes");
                        throw null;
                    }
                } else {
                    C15149k.m373d("primary");
                    throw null;
                }
            } else {
                RowInfo.Primary primary2 = this.f28750a;
                if (primary2 != null) {
                    primary2.type = RowInfo.Primary.Type.NUMBER;
                    List<RowInfo.MetaphorType> list2 = this.f28752c;
                    if (list2 != null) {
                        list2.add(RowInfo.MetaphorType.NOINTERNET);
                    } else {
                        C15149k.m373d("metaphorTypes");
                        throw null;
                    }
                } else {
                    C15149k.m373d("primary");
                    throw null;
                }
            }
        } else {
            C15149k.m373d("secondary");
            throw null;
        }
    }

    @Override // p459j.p460a.p521j0.p528w.AbstractC12746u
    /* renamed from: c */
    public RowInfo.Secondary mo5439c() {
        RowInfo.Secondary secondary = this.f28751b;
        if (secondary != null) {
            return secondary;
        }
        C15149k.m373d("secondary");
        throw null;
    }

    /* renamed from: c */
    public final void m5438c(AbstractC12741t tVar) {
        RowInfo.Secondary secondary = this.f28751b;
        if (secondary != null) {
            secondary.type = RowInfo.Secondary.Type.SEARCHING;
            AbstractC12741t.EnumC12745d dVar = tVar.f28716b;
            if (dVar != null && C12747v.f28748b[dVar.ordinal()] == 1) {
                RowInfo.Primary primary = this.f28750a;
                if (primary != null) {
                    primary.type = RowInfo.Primary.Type.CONTACT;
                    List<RowInfo.MetaphorType> list = this.f28752c;
                    if (list != null) {
                        list.add(RowInfo.MetaphorType.CONTACT);
                    } else {
                        C15149k.m373d("metaphorTypes");
                        throw null;
                    }
                } else {
                    C15149k.m373d("primary");
                    throw null;
                }
            } else {
                RowInfo.Primary primary2 = this.f28750a;
                if (primary2 != null) {
                    primary2.type = RowInfo.Primary.Type.NUMBER;
                    List<RowInfo.MetaphorType> list2 = this.f28752c;
                    if (list2 != null) {
                        list2.add(RowInfo.MetaphorType.NOINFO);
                    } else {
                        C15149k.m373d("metaphorTypes");
                        throw null;
                    }
                } else {
                    C15149k.m373d("primary");
                    throw null;
                }
            }
        } else {
            C15149k.m373d("secondary");
            throw null;
        }
    }
}
