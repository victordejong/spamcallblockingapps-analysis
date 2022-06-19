.class public Lp3/a/n1/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/StringBuilder;

.field public final synthetic b:Lp3/a/n1/b0;


# direct methods
.method public constructor <init>(Lp3/a/n1/b0;Ljava/lang/StringBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lp3/a/n1/c0;->b:Lp3/a/n1/b0;

    iput-object p2, p0, Lp3/a/n1/c0;->a:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/c0;->b:Lp3/a/n1/b0;

    sget-object v1, Lp3/a/g1;->i:Lp3/a/g1;

    iget-object v2, p0, Lp3/a/n1/c0;->a:Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, v2}, Lp3/a/n1/b0;->g(Lp3/a/g1;Z)V

    return-void
.end method
