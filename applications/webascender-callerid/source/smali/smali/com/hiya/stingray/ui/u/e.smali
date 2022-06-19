.class public final Lcom/hiya/stingray/ui/u/e;
.super Lcom/hiya/stingray/ui/common/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hiya/stingray/ui/common/k<",
        "Lcom/hiya/stingray/ui/u/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/hiya/common/phone/parser/PhoneParser;

.field private c:Z

.field private final d:Landroid/content/Context;

.field private final e:Lcom/hiya/stingray/manager/y2;

.field private final f:Ljava/lang/String;

.field private final g:Li/c/b0/c/a;

.field private final h:Lcom/hiya/stingray/manager/u3;

.field private final i:Lcom/hiya/stingray/ui/u/a;

.field private final j:Lcom/hiya/stingray/manager/o1;

.field private final k:Lcom/hiya/stingray/util/b0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/manager/y2;Ljava/lang/String;Li/c/b0/c/a;Lcom/hiya/stingray/manager/u3;Lcom/hiya/stingray/ui/u/a;Lcom/hiya/stingray/manager/o1;Lcom/hiya/stingray/util/b0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lookupManager"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simIso"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compositeDisposable"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumManager"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callLogManager"

    invoke-static {p7, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sticky"

    invoke-static {p8, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/k;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/u/e;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/ui/u/e;->e:Lcom/hiya/stingray/manager/y2;

    iput-object p3, p0, Lcom/hiya/stingray/ui/u/e;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/hiya/stingray/ui/u/e;->g:Li/c/b0/c/a;

    iput-object p5, p0, Lcom/hiya/stingray/ui/u/e;->h:Lcom/hiya/stingray/manager/u3;

    iput-object p6, p0, Lcom/hiya/stingray/ui/u/e;->i:Lcom/hiya/stingray/ui/u/a;

    iput-object p7, p0, Lcom/hiya/stingray/ui/u/e;->j:Lcom/hiya/stingray/manager/o1;

    iput-object p8, p0, Lcom/hiya/stingray/ui/u/e;->k:Lcom/hiya/stingray/util/b0;

    .line 2
    invoke-static {}, Lcom/hiya/common/phone/parser/PhoneParser$c;->a()Lcom/hiya/common/phone/parser/PhoneParser;

    move-result-object p1

    const-string p2, "PhoneParser.Singleton.lightWeightParser()"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/hiya/stingray/ui/u/e;->b:Lcom/hiya/common/phone/parser/PhoneParser;

    return-void
.end method

.method public static synthetic B(Lcom/hiya/stingray/ui/u/e;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/ui/u/e;->A(Ljava/lang/String;Z)V

    return-void
.end method

.method private final G()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/u/e;->j:Lcom/hiya/stingray/manager/o1;

    sget-object v1, Lcom/hiya/stingray/util/i$a;->OUTGOING:Lcom/hiya/stingray/util/i$a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/hiya/stingray/manager/o1;->r(ZLcom/hiya/stingray/util/i$a;)Li/c/b0/b/v;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/hiya/stingray/ui/u/e$f;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/u/e$f;-><init>(Lcom/hiya/stingray/ui/u/e;)V

    .line 3
    sget-object v2, Lcom/hiya/stingray/ui/u/e$g;->f:Lcom/hiya/stingray/ui/u/e$g;

    .line 4
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/hiya/stingray/ui/u/e;->g:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method private final H()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/u/f;

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/u/f;

    invoke-interface {v1}, Lcom/hiya/stingray/ui/u/f;->p0()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/u/f;

    invoke-interface {v1}, Lcom/hiya/stingray/ui/u/f;->i0()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0, v2}, Lcom/hiya/stingray/ui/u/f;->r0(Z)V

    return-void
.end method

.method private final I()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/u/f;

    iget-object v1, p0, Lcom/hiya/stingray/ui/u/e;->d:Landroid/content/Context;

    const v2, 0x7f110168

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.string.keypad_paste)"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hiya/stingray/ui/u/e;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/hiya/stingray/util/o;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f06019a

    goto :goto_0

    :cond_0
    const v2, 0x7f06002a

    :goto_0
    const v3, 0x7f080137

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/hiya/stingray/ui/u/f;->x0(Ljava/lang/String;ILjava/lang/Integer;)V

    return-void
.end method

.method private final J()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/u/f;

    iget-object v1, p0, Lcom/hiya/stingray/ui/u/e;->d:Landroid/content/Context;

    const v2, 0x7f1100a1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.string.calls_lookup_tab_title)"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hiya/stingray/ui/u/e;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/hiya/stingray/util/o;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f06019a

    goto :goto_0

    :cond_0
    const v2, 0x7f06002a

    :goto_0
    const v3, 0x7f080147

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/hiya/stingray/ui/u/f;->x0(Ljava/lang/String;ILjava/lang/Integer;)V

    return-void
.end method

.method private final K(Lcom/hiya/stingray/t/d0;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v0

    const-string v1, "callLogItem.identityData"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object v0

    const-string v2, "callLogItem.identityData.name"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/u/f;

    iget-object v0, p0, Lcom/hiya/stingray/ui/u/e;->d:Landroid/content/Context;

    const v1, 0x7f1102a0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026remium_no_name_available)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0600e5

    invoke-interface {p1, v0, v1, v4}, Lcom/hiya/stingray/ui/u/f;->x0(Ljava/lang/String;ILjava/lang/Integer;)V

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/hiya/stingray/ui/u/e;->h:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result v0

    const-string v5, "callLogItem.reputationDataItem"

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hiya/stingray/ui/u/e;->h:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->q()Lcom/hiya/stingray/t/y0;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Lcom/hiya/stingray/manager/u3;->S(Lcom/hiya/stingray/t/n0;Lcom/hiya/stingray/t/y0;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/u/e;->d:Landroid/content/Context;

    const v1, 0x7f11029f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 5
    :cond_3
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "if (nameAvailable) conte\u2026LogItem.identityData.name"

    .line 6
    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/hiya/stingray/ui/u/e;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/hiya/stingray/util/o;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    const p1, 0x7f06019a

    goto :goto_2

    .line 8
    :cond_4
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->q()Lcom/hiya/stingray/t/y0;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hiya/stingray/t/y0;->d()Lcom/hiya/stingray/t/z0;

    move-result-object p1

    sget-object v1, Lcom/hiya/stingray/ui/u/d;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v3, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const p1, 0x7f06002a

    goto :goto_2

    :cond_5
    const p1, 0x7f060177

    goto :goto_2

    :cond_6
    const p1, 0x7f060150

    .line 9
    :goto_2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/u/f;

    invoke-interface {v1, v0, p1, v4}, Lcom/hiya/stingray/ui/u/f;->x0(Ljava/lang/String;ILjava/lang/Integer;)V

    return-void
.end method

.method public static final synthetic t(Lcom/hiya/stingray/ui/u/e;)Lcom/hiya/stingray/manager/y2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/u/e;->e:Lcom/hiya/stingray/manager/y2;

    return-object p0
.end method

.method public static final synthetic u(Lcom/hiya/stingray/ui/u/e;)Lcom/hiya/stingray/manager/u3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/u/e;->h:Lcom/hiya/stingray/manager/u3;

    return-object p0
.end method

.method public static final synthetic v(Lcom/hiya/stingray/ui/u/e;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/u/e;->c:Z

    return-void
.end method

.method public static final synthetic w(Lcom/hiya/stingray/ui/u/e;Lcom/hiya/stingray/t/d0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/u/e;->K(Lcom/hiya/stingray/t/d0;)V

    return-void
.end method

.method private final x()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/u/e;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/hiya/stingray/util/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_2

    return v2

    .line 3
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/hiya/stingray/ui/u/e;->b:Lcom/hiya/common/phone/parser/PhoneParser;

    new-instance v4, Lg/g/c/a/a/a/j;

    new-array v1, v1, [Lg/g/c/a/a/a/i;

    new-instance v5, Lg/g/c/a/a/a/i$e;

    iget-object v6, p0, Lcom/hiya/stingray/ui/u/e;->f:Ljava/lang/String;

    invoke-direct {v5, v6}, Lg/g/c/a/a/a/i$e;-><init>(Ljava/lang/String;)V

    aput-object v5, v1, v2

    invoke-direct {v4, v0, v1}, Lg/g/c/a/a/a/j;-><init>(Ljava/lang/String;[Lg/g/c/a/a/a/i;)V

    invoke-interface {v3, v4}, Lcom/hiya/common/phone/parser/PhoneParser;->h(Lg/g/c/a/a/a/j;)Lcom/hiya/common/phone/parser/PhoneParser$b;

    move-result-object v0

    iget-boolean v2, v0, Lcom/hiya/common/phone/parser/PhoneParser$b;->g:Z
    :try_end_0
    .catch Lcom/hiya/common/phone/parser/PhoneParser$Failure; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v2
.end method

.method private final y()V
    .locals 7

    .line 1
    const-class v0, Lcom/hiya/stingray/manager/i2$b;

    iget-object v1, p0, Lcom/hiya/stingray/ui/u/e;->k:Lcom/hiya/stingray/util/b0;

    sget-object v2, Lcom/hiya/stingray/ui/u/e$a;->f:Lcom/hiya/stingray/ui/u/e$a;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Lcom/hiya/stingray/util/b0;->a(Ljava/lang/Class;ZLkotlin/w/b/l;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/manager/i2$b;

    const-string v2, ""

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hiya/stingray/ui/u/f;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/i2$b;->a()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v6, Lcom/hiya/stingray/manager/i2$b$a;->PHONE_NUMBER:Lcom/hiya/stingray/manager/i2$b$a;

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    instance-of v6, v1, Ljava/lang/String;

    if-nez v6, :cond_1

    move-object v1, v4

    :cond_1
    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 3
    :goto_1
    invoke-interface {v5, v1}, Lcom/hiya/stingray/ui/u/f;->Y(Ljava/lang/String;)V

    .line 4
    :cond_3
    iget-object v1, p0, Lcom/hiya/stingray/ui/u/e;->k:Lcom/hiya/stingray/util/b0;

    sget-object v5, Lcom/hiya/stingray/ui/u/e$b;->f:Lcom/hiya/stingray/ui/u/e$b;

    invoke-virtual {v1, v0, v3, v5}, Lcom/hiya/stingray/util/b0;->a(Ljava/lang/Class;ZLkotlin/w/b/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/manager/i2$b;

    if-eqz v0, :cond_8

    .line 5
    invoke-virtual {v0}, Lcom/hiya/stingray/manager/i2$b;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v1, Lcom/hiya/stingray/manager/i2$b$a;->PHONE_NUMBER:Lcom/hiya/stingray/manager/i2$b$a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v4

    :goto_2
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    move-object v4, v0

    :goto_3
    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_6

    move-object v2, v4

    .line 6
    :cond_6
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/u/f;

    invoke-interface {v0, v2}, Lcom/hiya/stingray/ui/u/f;->Y(Ljava/lang/String;)V

    .line 7
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_8

    .line 8
    invoke-virtual {p0, v2, v3}, Lcom/hiya/stingray/ui/u/e;->A(Ljava/lang/String;Z)V

    :cond_8
    return-void
.end method

.method private final z()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/u/f;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/u/f;->p0()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/hiya/stingray/ui/u/e;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/u/f;

    invoke-interface {v0, v2}, Lcom/hiya/stingray/ui/u/f;->t0(Z)V

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/ui/u/e;->I()V

    return v2

    :cond_1
    return v1
.end method


# virtual methods
.method public final A(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/u/e;->e:Lcom/hiya/stingray/manager/y2;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/manager/y2;->m(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/hiya/stingray/s/b;

    invoke-direct {v0}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/hiya/stingray/ui/u/e$c;

    invoke-direct {v0, p0, p2}, Lcom/hiya/stingray/ui/u/e$c;-><init>(Lcom/hiya/stingray/ui/u/e;Z)V

    .line 4
    new-instance v1, Lcom/hiya/stingray/ui/u/e$d;

    invoke-direct {v1, p0, p2}, Lcom/hiya/stingray/ui/u/e$d;-><init>(Lcom/hiya/stingray/ui/u/e;Z)V

    .line 5
    new-instance p2, Lcom/hiya/stingray/ui/u/e$e;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/ui/u/e$e;-><init>(Lcom/hiya/stingray/ui/u/e;)V

    .line 6
    invoke-virtual {p1, v0, v1, p2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;Li/c/b0/d/a;)Li/c/b0/c/c;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/hiya/stingray/ui/u/e;->g:Li/c/b0/c/a;

    invoke-virtual {p2, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method

.method public final C()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/u/f;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/u/f;->p0()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/u/e;->G()V

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/u/f;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/u/f;->p0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/c0/m;->s(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/u/f;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/u/f;->p0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/u/f;

    invoke-interface {v1}, Lcom/hiya/stingray/ui/u/f;->f()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hiya/stingray/util/e0;->B(Ljava/lang/String;Landroid/content/Context;)Z

    .line 5
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/u/f;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/hiya/stingray/ui/u/f;->Y(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/ui/u/e;->i:Lcom/hiya/stingray/ui/u/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/u/a;->c()V

    :goto_1
    return-void
.end method

.method public final D()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/u/f;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/u/f;->p0()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/u/f;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/u/f;->p0()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/hiya/stingray/ui/u/e;->B(Lcom/hiya/stingray/ui/u/e;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 3
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/u/e;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hiya/stingray/ui/u/e;->i:Lcom/hiya/stingray/ui/u/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/u/a;->b()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/hiya/stingray/ui/u/e;->i:Lcom/hiya/stingray/ui/u/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/u/a;->d()V

    goto :goto_1

    .line 4
    :cond_2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/u/e;->x()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/ui/u/e;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/hiya/stingray/util/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/u/f;

    invoke-interface {v1, v0}, Lcom/hiya/stingray/ui/u/f;->Y(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final E()V
    .locals 8

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/hiya/stingray/ui/u/e;->c:Z

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/u/e;->H()V

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/u/f;

    invoke-interface {v1}, Lcom/hiya/stingray/ui/u/f;->p0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/u/f;

    invoke-interface {v1}, Lcom/hiya/stingray/ui/u/f;->p0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/c0/m;->s(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/u/f;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/hiya/stingray/ui/u/f;->t0(Z)V

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/hiya/stingray/ui/u/e;->b:Lcom/hiya/common/phone/parser/PhoneParser;

    new-instance v3, Lg/g/c/a/a/a/j;

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hiya/stingray/ui/u/f;

    invoke-interface {v4}, Lcom/hiya/stingray/ui/u/f;->p0()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Lg/g/c/a/a/a/i;

    new-instance v6, Lg/g/c/a/a/a/i$e;

    iget-object v7, p0, Lcom/hiya/stingray/ui/u/e;->f:Ljava/lang/String;

    invoke-direct {v6, v7}, Lg/g/c/a/a/a/i$e;-><init>(Ljava/lang/String;)V

    aput-object v6, v5, v0

    invoke-direct {v3, v4, v5}, Lg/g/c/a/a/a/j;-><init>(Ljava/lang/String;[Lg/g/c/a/a/a/i;)V

    invoke-interface {v1, v3}, Lcom/hiya/common/phone/parser/PhoneParser;->h(Lg/g/c/a/a/a/j;)Lcom/hiya/common/phone/parser/PhoneParser$b;

    move-result-object v1

    .line 6
    iget-boolean v3, v1, Lcom/hiya/common/phone/parser/PhoneParser$b;->g:Z

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hiya/stingray/ui/u/f;

    invoke-interface {v3, v2}, Lcom/hiya/stingray/ui/u/f;->c0(Z)V

    .line 8
    iget-object v2, p0, Lcom/hiya/stingray/ui/u/e;->i:Lcom/hiya/stingray/ui/u/a;

    invoke-virtual {v2}, Lcom/hiya/stingray/ui/u/a;->a()V

    .line 9
    iget-object v1, v1, Lcom/hiya/common/phone/parser/PhoneParser$b;->f:Lg/g/c/a/a/a/h;

    invoke-virtual {v1}, Lg/g/c/a/a/a/h;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "parsingResult.parsedPhone.toE164()"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/hiya/stingray/ui/u/e;->A(Ljava/lang/String;Z)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/u/e;->J()V
    :try_end_0
    .catch Lcom/hiya/common/phone/parser/PhoneParser$Failure; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :catch_0
    invoke-direct {p0}, Lcom/hiya/stingray/ui/u/e;->J()V

    :goto_0
    return-void

    .line 12
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/u/e;->z()Z

    move-result v1

    if-nez v1, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/k;->n()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/u/f;

    invoke-interface {v1, v0}, Lcom/hiya/stingray/ui/u/f;->t0(Z)V

    .line 14
    invoke-direct {p0}, Lcom/hiya/stingray/ui/u/e;->J()V

    :cond_3
    return-void
.end method

.method public final F(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/u/e;->H()V

    return-void
.end method

.method public p()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/k;->p()V

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/u/e;->y()V

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/u/e;->E()V

    return-void
.end method
