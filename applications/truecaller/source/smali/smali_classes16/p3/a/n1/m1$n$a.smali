.class public final Lp3/a/n1/m1$n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/m1$n;->d(Lp3/a/o;Lp3/a/i0$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/i0$i;

.field public final synthetic b:Lp3/a/o;

.field public final synthetic c:Lp3/a/n1/m1$n;


# direct methods
.method public constructor <init>(Lp3/a/n1/m1$n;Lp3/a/i0$i;Lp3/a/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lp3/a/n1/m1$n$a;->c:Lp3/a/n1/m1$n;

    iput-object p2, p0, Lp3/a/n1/m1$n$a;->a:Lp3/a/i0$i;

    iput-object p3, p0, Lp3/a/n1/m1$n$a;->b:Lp3/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$n$a;->c:Lp3/a/n1/m1$n;

    iget-object v1, v0, Lp3/a/n1/m1$n;->b:Lp3/a/n1/m1;

    .line 2
    iget-object v2, v1, Lp3/a/n1/m1;->A:Lp3/a/n1/m1$n;

    if-eq v0, v2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lp3/a/n1/m1$n$a;->a:Lp3/a/i0$i;

    .line 4
    iput-object v0, v1, Lp3/a/n1/m1;->B:Lp3/a/i0$i;

    .line 5
    iget-object v1, v1, Lp3/a/n1/m1;->H:Lp3/a/n1/d0;

    invoke-virtual {v1, v0}, Lp3/a/n1/d0;->i(Lp3/a/i0$i;)V

    .line 6
    iget-object v0, p0, Lp3/a/n1/m1$n$a;->b:Lp3/a/o;

    sget-object v1, Lp3/a/o;->e:Lp3/a/o;

    if-eq v0, v1, :cond_1

    .line 7
    iget-object v1, p0, Lp3/a/n1/m1$n$a;->c:Lp3/a/n1/m1$n;

    iget-object v1, v1, Lp3/a/n1/m1$n;->b:Lp3/a/n1/m1;

    .line 8
    iget-object v1, v1, Lp3/a/n1/m1;->Q:Lp3/a/e;

    .line 9
    sget-object v2, Lp3/a/e$a;->b:Lp3/a/e$a;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lp3/a/n1/m1$n$a;->a:Lp3/a/i0$i;

    aput-object v4, v3, v0

    const-string v0, "Entering {0} state with picker: {1}"

    invoke-virtual {v1, v2, v0, v3}, Lp3/a/e;->b(Lp3/a/e$a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lp3/a/n1/m1$n$a;->c:Lp3/a/n1/m1$n;

    iget-object v0, v0, Lp3/a/n1/m1$n;->b:Lp3/a/n1/m1;

    .line 11
    iget-object v0, v0, Lp3/a/n1/m1;->u:Lp3/a/n1/y;

    .line 12
    iget-object v1, p0, Lp3/a/n1/m1$n$a;->b:Lp3/a/o;

    invoke-virtual {v0, v1}, Lp3/a/n1/y;->a(Lp3/a/o;)V

    :cond_1
    return-void
.end method
