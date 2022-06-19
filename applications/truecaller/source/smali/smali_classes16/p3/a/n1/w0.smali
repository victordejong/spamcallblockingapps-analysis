.class public Lp3/a/n1/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lp3/a/n1/u$a;

.field public final synthetic b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lp3/a/n1/u$a;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/w0;->a:Lp3/a/n1/u$a;

    iput-object p2, p0, Lp3/a/n1/w0;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/w0;->a:Lp3/a/n1/u$a;

    iget-object v1, p0, Lp3/a/n1/w0;->b:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lp3/a/n1/u$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method
