.class final Li/c/b0/e/f/e/m4$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/m4$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic f:Li/c/b0/e/f/e/m4$c;


# direct methods
.method constructor <init>(Li/c/b0/e/f/e/m4$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/c/b0/e/f/e/m4$c$a;->f:Li/c/b0/e/f/e/m4$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m4$c$a;->f:Li/c/b0/e/f/e/m4$c;

    invoke-virtual {v0}, Li/c/b0/e/f/e/m4$a;->d()V

    return-void
.end method
