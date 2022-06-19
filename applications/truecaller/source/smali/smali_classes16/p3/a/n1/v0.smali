.class public Lp3/a/n1/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lp3/a/n1/u$a;

.field public final synthetic b:J


# direct methods
.method public constructor <init>(Lp3/a/n1/u$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/v0;->a:Lp3/a/n1/u$a;

    iput-wide p2, p0, Lp3/a/n1/v0;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/v0;->a:Lp3/a/n1/u$a;

    iget-wide v1, p0, Lp3/a/n1/v0;->b:J

    invoke-interface {v0, v1, v2}, Lp3/a/n1/u$a;->b(J)V

    return-void
.end method
