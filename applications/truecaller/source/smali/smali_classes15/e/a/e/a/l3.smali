.class public Le/a/e/a/l3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/z/b/l<",
        "Ljava/lang/Throwable;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/e/a/k3;


# direct methods
.method public constructor <init>(Le/a/e/a/k3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/a/l3;->a:Le/a/e/a/k3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/e/a/l3;->a:Le/a/e/a/k3;

    invoke-virtual {v0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "An error occurred during heap dumping"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Le/a/e/a/l3;->a:Le/a/e/a/k3;

    const/4 v0, 0x1

    const-string v1, "Dump saved in Downloads directory"

    invoke-static {p1, v1, v0}, Le/d/c/a/a;->y0(Le/a/e/a/k3;Ljava/lang/String;I)V

    .line 5
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
