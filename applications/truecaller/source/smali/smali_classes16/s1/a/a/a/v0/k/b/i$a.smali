.class public final Ls1/a/a/a/v0/k/b/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/k/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Ls1/a/a/a/v0/k/b/i;

.field public static final synthetic b:Ls1/a/a/a/v0/k/b/i$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/k/b/i$a;

    invoke-direct {v0}, Ls1/a/a/a/v0/k/b/i$a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/k/b/i$a;->b:Ls1/a/a/a/v0/k/b/i$a;

    .line 2
    new-instance v0, Ls1/a/a/a/v0/k/b/i$a$a;

    invoke-direct {v0}, Ls1/a/a/a/v0/k/b/i$a$a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/k/b/i$a;->a:Ls1/a/a/a/v0/k/b/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
