.class public Ln3/r/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/r/a/b$d;


# direct methods
.method public constructor <init>(Ln3/r/a/b;Ln3/r/a/b$d;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ln3/r/a/j;->a:Ln3/r/a/b$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/r/a/j;->a:Ln3/r/a/b$d;

    invoke-virtual {v0}, Ln3/r/a/b$c;->a()V

    return-void
.end method
