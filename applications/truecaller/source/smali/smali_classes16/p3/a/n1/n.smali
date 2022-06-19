.class public final Lp3/a/n1/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/n1/n$a;
    }
.end annotation


# instance fields
.field public final a:Lp3/a/n1/u2;

.field public final b:Lp3/a/n1/l1;

.field public final c:Lp3/a/n1/l1;

.field public final d:Lp3/a/n1/l1;


# direct methods
.method public constructor <init>(Lp3/a/n1/u2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Le/q/f/a/d/a;->X()Lp3/a/n1/l1;

    move-result-object v0

    iput-object v0, p0, Lp3/a/n1/n;->b:Lp3/a/n1/l1;

    .line 3
    invoke-static {}, Le/q/f/a/d/a;->X()Lp3/a/n1/l1;

    move-result-object v0

    iput-object v0, p0, Lp3/a/n1/n;->c:Lp3/a/n1/l1;

    .line 4
    invoke-static {}, Le/q/f/a/d/a;->X()Lp3/a/n1/l1;

    move-result-object v0

    iput-object v0, p0, Lp3/a/n1/n;->d:Lp3/a/n1/l1;

    .line 5
    iput-object p1, p0, Lp3/a/n1/n;->a:Lp3/a/n1/u2;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    const-wide/16 v0, 0x1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lp3/a/n1/n;->c:Lp3/a/n1/l1;

    invoke-interface {p1, v0, v1}, Lp3/a/n1/l1;->a(J)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lp3/a/n1/n;->d:Lp3/a/n1/l1;

    invoke-interface {p1, v0, v1}, Lp3/a/n1/l1;->a(J)V

    :goto_0
    return-void
.end method
