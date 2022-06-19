.class public final Le/a/p5/t0/b$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/p5/t0/b;-><init>(Le/a/p5/t0/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroid/content/SharedPreferences$Editor;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/p5/t0/a;


# direct methods
.method public constructor <init>(Le/a/p5/t0/a;)V
    .locals 0

    iput-object p1, p0, Le/a/p5/t0/b$a;->b:Le/a/p5/t0/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/p5/t0/b$a;->b:Le/a/p5/t0/a;

    .line 2
    iget-object v0, v0, Le/a/p5/t0/a;->a:Landroid/content/SharedPreferences;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method
