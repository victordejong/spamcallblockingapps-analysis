.class public Lp3/a/n1/d0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/d0;->d(Lp3/a/n1/t1$a;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/t1$a;


# direct methods
.method public constructor <init>(Lp3/a/n1/d0;Lp3/a/n1/t1$a;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lp3/a/n1/d0$c;->a:Lp3/a/n1/t1$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/d0$c;->a:Lp3/a/n1/t1$a;

    invoke-interface {v0}, Lp3/a/n1/t1$a;->c()V

    return-void
.end method
