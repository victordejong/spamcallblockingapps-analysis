.class public final Le/a/e/b/n/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/t/a/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/b/n/h;->Rr()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/e/b/n/h;


# direct methods
.method public constructor <init>(Le/a/e/b/n/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/e/b/n/h$a;->a:Le/a/e/b/n/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/b/n/h$a;->a:Le/a/e/b/n/h;

    invoke-virtual {v0}, Le/a/e/b/n/h;->OA()Le/a/e/b/n/j;

    move-result-object v0

    invoke-interface {v0, p1}, Le/a/e/b/n/j;->h5(Z)V

    return-void
.end method
