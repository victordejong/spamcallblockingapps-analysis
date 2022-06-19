.class public Lp3/a/n1/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lp3/a/n1/x;

.field public final synthetic b:Z

.field public final synthetic c:Lp3/a/n1/a1;


# direct methods
.method public constructor <init>(Lp3/a/n1/a1;Lp3/a/n1/x;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/f1;->c:Lp3/a/n1/a1;

    iput-object p2, p0, Lp3/a/n1/f1;->a:Lp3/a/n1/x;

    iput-boolean p3, p0, Lp3/a/n1/f1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/f1;->c:Lp3/a/n1/a1;

    .line 2
    iget-object v0, v0, Lp3/a/n1/a1;->t:Lp3/a/n1/y0;

    .line 3
    iget-object v1, p0, Lp3/a/n1/f1;->a:Lp3/a/n1/x;

    iget-boolean v2, p0, Lp3/a/n1/f1;->b:Z

    invoke-virtual {v0, v1, v2}, Lp3/a/n1/y0;->c(Ljava/lang/Object;Z)V

    return-void
.end method
