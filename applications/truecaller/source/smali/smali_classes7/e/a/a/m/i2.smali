.class public abstract Le/a/a/m/i2;
.super Le/a/o2/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Ljava/lang/Object;",
        ">",
        "Le/a/o2/d<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final b:Le/a/a/m/j2;


# direct methods
.method public constructor <init>(Le/a/a/m/j2;)V
    .locals 1

    const-string v0, "promoProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/d;-><init>()V

    iput-object p1, p0, Le/a/a/m/i2;->b:Le/a/a/m/j2;

    return-void
.end method


# virtual methods
.method public abstract A(Le/a/a/m/d1;)Z
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public m(I)Z
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/a/m/i2;->b:Le/a/a/m/j2;

    invoke-interface {p1}, Le/a/a/m/j2;->Ge()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PromoInboxPersonalTab"

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Le/a/a/m/i2;->b:Le/a/a/m/j2;

    invoke-interface {p1}, Le/a/a/m/j2;->Ge()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PromoCallTab"

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/a/m/i2;->b:Le/a/a/m/j2;

    invoke-interface {p1}, Le/a/a/m/j2;->ze()Le/a/a/m/d1;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/a/m/i2;->A(Le/a/a/m/d1;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
