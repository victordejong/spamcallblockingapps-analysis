.class public final Le/a/b0/q/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/q/h0;


# instance fields
.field public final a:Ls1/g;

.field public final b:Landroid/content/Context;

.field public final c:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/p5/c0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b0/q/i0;->b:Landroid/content/Context;

    iput-object p2, p0, Le/a/b0/q/i0;->c:Le/a/p5/c0;

    .line 2
    new-instance p1, Le/a/b0/q/i0$a;

    invoke-direct {p1, p0}, Le/a/b0/q/i0$a;-><init>(Le/a/b0/q/i0;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/b0/q/i0;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Z
    .locals 1

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/a/b0/q/c0;->i(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b0/q/i0;->b:Landroid/content/Context;

    .line 2
    sget-object v1, Le/a/b0/q/c0;->a:Ljava/util/List;

    .line 3
    sget-object v1, Le/a/p5/i;->b:Le/a/p5/i;

    .line 4
    sget-object v1, Le/a/p5/i;->a:Ljava/util/HashSet;

    invoke-static {v1, p1}, Ls1/u/i;->l(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Le/a/b0/q/c0;->a:Ljava/util/List;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "emergency_call_dialog_number_for_display"

    const-string v2, "string"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Le/a/b0/q/i0;->c:Le/a/p5/c0;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    return-object v3
.end method

.method public varargs d([Ljava/lang/String;)Z
    .locals 6

    const-string v0, "phoneNumbers"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b0/q/i0;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-nez v0, :cond_4

    .line 3
    array-length v0, p1

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_3

    aget-object v4, p1, v3

    .line 4
    iget-object v5, p0, Le/a/b0/q/i0;->a:Ls1/g;

    invoke-interface {v5}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5
    invoke-static {v5, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move p1, v1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move p1, v2

    :goto_3
    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    return v1
.end method

.method public e(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/a/b0/q/c0;->e(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
