.class public final Le/a/l/c/b$n;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/c/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/view/View;",
        "Le/a/l/c/a/p0;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/l/c/b$n;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/l/c/b$n;

    invoke-direct {v0}, Le/a/l/c/b$n;-><init>()V

    sput-object v0, Le/a/l/c/b$n;->b:Le/a/l/c/b$n;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/view/View;

    const-string v0, "v"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/l/c/a/p0;

    invoke-direct {v0, p1}, Le/a/l/c/a/p0;-><init>(Landroid/view/View;)V

    return-object v0
.end method
