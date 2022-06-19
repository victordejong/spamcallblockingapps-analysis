.class public Lp3/a/n1/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/h;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lp3/a/n1/h;


# direct methods
.method public constructor <init>(Lp3/a/n1/h;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/h$b;->b:Lp3/a/n1/h;

    iput-boolean p2, p0, Lp3/a/n1/h$b;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/h$b;->b:Lp3/a/n1/h;

    .line 2
    iget-object v0, v0, Lp3/a/n1/h;->b:Lp3/a/n1/u1$b;

    .line 3
    iget-boolean v1, p0, Lp3/a/n1/h$b;->a:Z

    invoke-interface {v0, v1}, Lp3/a/n1/u1$b;->c(Z)V

    return-void
.end method
