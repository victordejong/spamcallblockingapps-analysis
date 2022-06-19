.class public Lg/e/a/a/e/p;
.super Lg/e/a/a/e/i;
.source "SourceFile"


# instance fields
.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lg/e/a/a/e/i;-><init>(FF)V

    return-void
.end method


# virtual methods
.method public f()F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "DEPRECATED"

    const-string v1, "Pie entries do not have x values"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0}, Lg/e/a/a/e/i;->f()F

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/e/p;->j:Ljava/lang/String;

    return-object v0
.end method
