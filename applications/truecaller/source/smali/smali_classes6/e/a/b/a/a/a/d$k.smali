.class public final Le/a/b/a/a/a/d$k;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/a/a/a/d;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ln3/b0/a/v;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/b/a/a/a/d$k;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/b/a/a/a/d$k;

    invoke-direct {v0}, Le/a/b/a/a/a/d$k;-><init>()V

    sput-object v0, Le/a/b/a/a/a/d$k;->b:Le/a/b/a/a/a/d$k;

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
    .locals 1

    .line 1
    new-instance v0, Ln3/b0/a/v;

    invoke-direct {v0}, Ln3/b0/a/v;-><init>()V

    return-object v0
.end method
