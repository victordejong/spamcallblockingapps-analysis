.class public final Le/a/c/a/c/h/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/a/e/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/c/h/h;-><init>(Landroidx/activity/result/ActivityResultRegistry;Le/a/c/b/h;Ls1/z/b/l;)V
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
.field public final synthetic a:Le/a/c/a/c/h/h;


# direct methods
.method public constructor <init>(Le/a/c/a/c/h/h;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/c/h/h$a;->a:Le/a/c/a/c/h/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, Le/a/c/a/c/h/h$a;->a:Le/a/c/a/c/h/h;

    .line 3
    iget-object v0, v0, Le/a/c/a/c/h/h;->a:Ls1/z/b/l;

    const-string v1, "success"

    .line 4
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
