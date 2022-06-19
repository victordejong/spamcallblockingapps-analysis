.class Lf/h/i/c$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/h/i/c$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Ljava/lang/Object;

.field final synthetic g:Lf/h/i/c$b;


# direct methods
.method constructor <init>(Lf/h/i/c$b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/h/i/c$b$a;->g:Lf/h/i/c$b;

    iput-object p2, p0, Lf/h/i/c$b$a;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/h/i/c$b$a;->g:Lf/h/i/c$b;

    iget-object v0, v0, Lf/h/i/c$b;->h:Lf/h/i/c$d;

    iget-object v1, p0, Lf/h/i/c$b$a;->f:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lf/h/i/c$d;->a(Ljava/lang/Object;)V

    return-void
.end method
