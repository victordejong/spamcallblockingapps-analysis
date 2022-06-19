.class public final Le/a/h/b/m0$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/m0;-><init>(Ls1/w/f;Ls1/w/f;Lcom/truecaller/calling/dialer/DialerMode;Le/a/h/b/p0;Le/a/b0/e/l;Le/a/o5/q1;Le/a/o5/f0;Le/a/h/c/t;Le/a/h/b/g0$a;Le/a/q2/a;Le/a/k3/l/f;Le/a/h3/b/a;Le/a/h/b/d/a/b/b;Le/a/e4/p;Le/a/h/b/e/b;Le/a/h/b/y0/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/h/b/m0;


# direct methods
.method public constructor <init>(Le/a/h/b/m0;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/m0$c;->b:Le/a/h/b/m0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h/b/m0$c;->b:Le/a/h/b/m0;

    .line 2
    iget-object v0, v0, Le/a/h/b/m0;->B:Le/a/h/b/e/b;

    .line 3
    invoke-interface {v0}, Le/a/h/b/e/b;->c()Lq3/a/w2/h;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
