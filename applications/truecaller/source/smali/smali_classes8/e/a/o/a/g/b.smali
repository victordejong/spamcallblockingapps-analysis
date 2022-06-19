.class public abstract Le/a/o/a/g/b;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/o/a/g/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PV::",
        "Le/a/o/a/g/f;",
        ">",
        "Le/a/u2/a/a<",
        "TPV;>;",
        "Le/a/o/a/g/e<",
        "TPV;>;"
    }
.end annotation


# instance fields
.field public final d:Ls1/w/f;


# direct methods
.method public constructor <init>(Ls1/w/f;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/o/a/g/b;->d:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public T(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/o/a/g/f;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-interface {v0, v1}, Le/a/o/a/g/f;->C8(Z)V

    :cond_1
    return-void
.end method
