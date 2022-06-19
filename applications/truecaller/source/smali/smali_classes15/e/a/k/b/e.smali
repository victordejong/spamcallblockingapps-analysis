.class public final Le/a/k/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/g/v/a;


# instance fields
.field public final synthetic a:Le/a/k/b/a;


# direct methods
.method public constructor <init>(Le/a/k/b/a;I)V
    .locals 0

    iput-object p1, p0, Le/a/k/b/e;->a:Le/a/k/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;FZ)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/material/slider/Slider;

    const-string v0, "<anonymous parameter 0>"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/k/b/e;->a:Le/a/k/b/a;

    .line 4
    iget-object p1, p1, Le/a/k/b/a;->h:Le/a/k/c/i1;

    if-eqz p1, :cond_1

    float-to-int p2, p2

    const-string p3, "debugVideoDownloadPercentage"

    .line 5
    invoke-interface {p1, p3, p2}, Le/a/k/c/i1;->putInt(Ljava/lang/String;I)V

    .line 6
    iget-object p1, p0, Le/a/k/b/e;->a:Le/a/k/b/a;

    .line 7
    invoke-virtual {p1}, Le/a/k/b/a;->SA()Lq3/a/p1;

    :goto_0
    return-void

    :cond_1
    const-string p1, "settings"

    .line 8
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
