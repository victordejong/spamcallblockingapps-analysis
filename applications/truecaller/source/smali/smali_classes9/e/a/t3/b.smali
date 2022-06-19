.class public final Le/a/t3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/u3/a;


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Le/a/p5/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "deviceInfoUtil"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Le/a/l4/k;->T()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Le/a/t3/b;->a:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/t3/b;->a:Z

    return v0
.end method
