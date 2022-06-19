.class public Lp3/a/n1/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/h;->e(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Throwable;

.field public final synthetic b:Lp3/a/n1/h;


# direct methods
.method public constructor <init>(Lp3/a/n1/h;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/h$c;->b:Lp3/a/n1/h;

    iput-object p2, p0, Lp3/a/n1/h$c;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/h$c;->b:Lp3/a/n1/h;

    .line 2
    iget-object v0, v0, Lp3/a/n1/h;->b:Lp3/a/n1/u1$b;

    .line 3
    iget-object v1, p0, Lp3/a/n1/h$c;->a:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lp3/a/n1/u1$b;->e(Ljava/lang/Throwable;)V

    return-void
.end method
