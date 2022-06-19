.class public final Le/a/k/a/c/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/a/e/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/a/c/a;-><init>()V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/k/a/c/a;


# direct methods
.method public constructor <init>(Le/a/k/a/c/a;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/c/a$c;->a:Le/a/k/a/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    const-string v0, "granted"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/a/k/a/c/a$c;->a:Le/a/k/a/c/a;

    invoke-virtual {p1}, Ln3/r/a/k;->dismiss()V

    :cond_0
    return-void
.end method
