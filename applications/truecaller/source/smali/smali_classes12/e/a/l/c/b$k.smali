.class public final Le/a/l/c/b$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/a/e/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/c/b;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/a/e/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/l/c/b;


# direct methods
.method public constructor <init>(Le/a/l/c/b;)V
    .locals 0

    iput-object p1, p0, Le/a/l/c/b$k;->a:Le/a/l/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 3
    iget-object v0, p0, Le/a/l/c/b$k;->a:Le/a/l/c/b;

    invoke-virtual {v0}, Le/a/l/c/b;->SA()Le/a/l/c/h;

    move-result-object v0

    invoke-interface {v0, p1}, Le/a/l/c/a/j2;->eh(I)V

    :cond_0
    return-void
.end method
