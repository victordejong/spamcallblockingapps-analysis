.class public Lp3/a/n1/e0$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/e0;->s(Lp3/a/n1/s;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/e0;


# direct methods
.method public constructor <init>(Lp3/a/n1/e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/e0$i;->a:Lp3/a/n1/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/e0$i;->a:Lp3/a/n1/e0;

    .line 2
    invoke-virtual {v0}, Lp3/a/n1/e0;->p()V

    return-void
.end method
