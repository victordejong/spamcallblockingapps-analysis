.class public Lp3/a/n1/b0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/b0;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lp3/a/n1/b0;


# direct methods
.method public constructor <init>(Lp3/a/n1/b0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/b0$e;->b:Lp3/a/n1/b0;

    iput p2, p0, Lp3/a/n1/b0$e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/b0$e;->b:Lp3/a/n1/b0;

    .line 2
    iget-object v0, v0, Lp3/a/n1/b0;->f:Lp3/a/f;

    .line 3
    iget v1, p0, Lp3/a/n1/b0$e;->a:I

    invoke-virtual {v0, v1}, Lp3/a/f;->c(I)V

    return-void
.end method
