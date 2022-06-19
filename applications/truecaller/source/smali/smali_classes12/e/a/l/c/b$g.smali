.class public final Le/a/l/c/b$g;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/c/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ln3/p/a/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/l/c/b$g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/l/c/b$g;

    invoke-direct {v0}, Le/a/l/c/b$g;-><init>()V

    sput-object v0, Le/a/l/c/b$g;->b:Le/a/l/c/b$g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Ln3/p/a/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln3/p/a/g;-><init>(F)V

    const/high16 v1, 0x437a0000    # 250.0f

    .line 2
    invoke-virtual {v0, v1}, Ln3/p/a/g;->b(F)Ln3/p/a/g;

    const v1, 0x3e4ccccd    # 0.2f

    .line 3
    invoke-virtual {v0, v1}, Ln3/p/a/g;->a(F)Ln3/p/a/g;

    return-object v0
.end method
