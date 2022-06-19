.class public Lp3/a/n1/b0$i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/b0$i;->a(Lp3/a/g1;Lp3/a/o0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/g1;

.field public final synthetic b:Lp3/a/o0;

.field public final synthetic c:Lp3/a/n1/b0$i;


# direct methods
.method public constructor <init>(Lp3/a/n1/b0$i;Lp3/a/g1;Lp3/a/o0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/b0$i$c;->c:Lp3/a/n1/b0$i;

    iput-object p2, p0, Lp3/a/n1/b0$i$c;->a:Lp3/a/g1;

    iput-object p3, p0, Lp3/a/n1/b0$i$c;->b:Lp3/a/o0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/b0$i$c;->c:Lp3/a/n1/b0$i;

    .line 2
    iget-object v0, v0, Lp3/a/n1/b0$i;->a:Lp3/a/f$a;

    .line 3
    iget-object v1, p0, Lp3/a/n1/b0$i$c;->a:Lp3/a/g1;

    iget-object v2, p0, Lp3/a/n1/b0$i$c;->b:Lp3/a/o0;

    invoke-virtual {v0, v1, v2}, Lp3/a/f$a;->a(Lp3/a/g1;Lp3/a/o0;)V

    return-void
.end method
