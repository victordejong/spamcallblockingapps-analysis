.class public final Le/a/h/b/j$c;
.super Le/a/b0/a/w/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/j;->Sm()Le/a/b0/a/w/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/h/b/j;


# direct methods
.method public constructor <init>(Le/a/h/b/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/h/b/j$c;->a:Le/a/h/b/j;

    invoke-direct {p0}, Le/a/b0/a/w/b;-><init>()V

    return-void
.end method


# virtual methods
.method public No()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/b/j$c;->a:Le/a/h/b/j;

    invoke-virtual {v0}, Le/a/h/b/j;->OA()Le/a/h/b/t;

    move-result-object v0

    invoke-interface {v0}, Le/a/h/b/t;->eg()V

    return-void
.end method
