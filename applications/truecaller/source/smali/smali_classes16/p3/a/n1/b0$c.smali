.class public Lp3/a/n1/b0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/b0;->g(Lp3/a/g1;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/g1;

.field public final synthetic b:Lp3/a/n1/b0;


# direct methods
.method public constructor <init>(Lp3/a/n1/b0;Lp3/a/g1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/b0$c;->b:Lp3/a/n1/b0;

    iput-object p2, p0, Lp3/a/n1/b0$c;->a:Lp3/a/g1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/b0$c;->b:Lp3/a/n1/b0;

    .line 2
    iget-object v0, v0, Lp3/a/n1/b0;->f:Lp3/a/f;

    .line 3
    iget-object v1, p0, Lp3/a/n1/b0$c;->a:Lp3/a/g1;

    .line 4
    iget-object v2, v1, Lp3/a/g1;->b:Ljava/lang/String;

    .line 5
    iget-object v1, v1, Lp3/a/g1;->c:Ljava/lang/Throwable;

    .line 6
    invoke-virtual {v0, v2, v1}, Lp3/a/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
