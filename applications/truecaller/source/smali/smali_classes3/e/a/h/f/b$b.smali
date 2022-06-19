.class public final Le/a/h/f/b$b;
.super Le/a/b0/a/w/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/f/b;->Sm()Le/a/b0/a/w/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/h/f/b;


# direct methods
.method public constructor <init>(Le/a/h/f/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/h/f/b$b;->a:Le/a/h/f/b;

    invoke-direct {p0}, Le/a/b0/a/w/b;-><init>()V

    return-void
.end method


# virtual methods
.method public No()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/f/b$b;->a:Le/a/h/f/b;

    .line 2
    iget-object v0, v0, Le/a/h/f/b;->c:Le/a/h/f/d0;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Le/a/h/f/d0;->hc()V

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
