.class public final Le/a/i/y/a$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/y/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/m/e/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/i/y/a$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/i/y/a$e;

    invoke-direct {v0}, Le/a/i/y/a$e;-><init>()V

    sput-object v0, Le/a/i/y/a$e;->b:Le/a/i/y/a$e;

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
    .locals 3

    .line 1
    new-instance v0, Le/m/e/l;

    invoke-direct {v0}, Le/m/e/l;-><init>()V

    .line 2
    const-class v1, Le/a/i/c/a/u;

    new-instance v2, Le/a/i/h0/f;

    invoke-direct {v2}, Le/a/i/h0/f;-><init>()V

    invoke-virtual {v0, v1, v2}, Le/m/e/l;->b(Ljava/lang/reflect/Type;Ljava/lang/Object;)Le/m/e/l;

    .line 3
    const-class v1, Landroid/net/Uri;

    new-instance v2, Le/a/i/h0/o;

    invoke-direct {v2}, Le/a/i/h0/o;-><init>()V

    invoke-virtual {v0, v1, v2}, Le/m/e/l;->b(Ljava/lang/reflect/Type;Ljava/lang/Object;)Le/m/e/l;

    .line 4
    invoke-virtual {v0}, Le/m/e/l;->a()Le/m/e/k;

    move-result-object v0

    return-object v0
.end method
