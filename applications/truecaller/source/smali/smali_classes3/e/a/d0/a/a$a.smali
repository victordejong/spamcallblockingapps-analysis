.class public final Le/a/d0/a/a$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d0/a/a;-><init>(Landroid/content/Context;Le/a/d0/a/y$b;Lcom/truecaller/settings/CallingSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroid/graphics/Typeface;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Le/a/d0/a/a$a;

.field public static final d:Le/a/d0/a/a$a;


# instance fields
.field public final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/a/d0/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/d0/a/a$a;-><init>(I)V

    sput-object v0, Le/a/d0/a/a$a;->c:Le/a/d0/a/a$a;

    new-instance v0, Le/a/d0/a/a$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Le/a/d0/a/a$a;-><init>(I)V

    sput-object v0, Le/a/d0/a/a$a;->d:Le/a/d0/a/a$a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Le/a/d0/a/a$a;->b:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Le/a/d0/a/a$a;->b:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "sans-serif"

    .line 1
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    throw v0

    :cond_1
    const-string v0, "sans-serif-medium"

    .line 3
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method
