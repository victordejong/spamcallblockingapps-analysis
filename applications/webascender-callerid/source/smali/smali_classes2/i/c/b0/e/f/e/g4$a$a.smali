.class final Li/c/b0/e/f/e/g4$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/g4$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic f:Li/c/b0/e/f/e/g4$a;


# direct methods
.method constructor <init>(Li/c/b0/e/f/e/g4$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/c/b0/e/f/e/g4$a$a;->f:Li/c/b0/e/f/e/g4$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/g4$a$a;->f:Li/c/b0/e/f/e/g4$a;

    iget-object v0, v0, Li/c/b0/e/f/e/g4$a;->h:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    return-void
.end method
