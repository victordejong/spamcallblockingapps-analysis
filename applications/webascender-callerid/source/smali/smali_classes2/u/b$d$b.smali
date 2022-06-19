.class Lu/b$d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/b$d;->b(Lu/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lu/c<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lu/c;

.field final synthetic b:Lu/b$d;


# direct methods
.method constructor <init>(Lu/b$d;Lu/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu/b$d$b;->b:Lu/b$d;

    iput-object p2, p0, Lu/b$d$b;->a:Lu/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lu/b$d$b;->b:Lu/b$d;

    iget-object v0, v0, Lu/b$d;->h:Lu/b$c;

    iget-object v1, p0, Lu/b$d$b;->a:Lu/c;

    invoke-interface {v0, p1, v1}, Lu/b$c;->a(Ljava/lang/Throwable;Lu/c;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu/b$d$b;->a:Lu/c;

    invoke-interface {v0, p1}, Lu/c;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
