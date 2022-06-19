.class public final Ls1/a/a/a/v0/m/l1/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/m/l1/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Ls1/a/a/a/v0/m/l1/l;

.field public static final synthetic b:Ls1/a/a/a/v0/m/l1/k$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ls1/a/a/a/v0/m/l1/k$a;

    invoke-direct {v0}, Ls1/a/a/a/v0/m/l1/k$a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/m/l1/k$a;->b:Ls1/a/a/a/v0/m/l1/k$a;

    .line 2
    new-instance v0, Ls1/a/a/a/v0/m/l1/l;

    sget-object v1, Ls1/a/a/a/v0/m/l1/e$a;->a:Ls1/a/a/a/v0/m/l1/e$a;

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/m/l1/l;-><init>(Ls1/a/a/a/v0/m/l1/e;)V

    sput-object v0, Ls1/a/a/a/v0/m/l1/k$a;->a:Ls1/a/a/a/v0/m/l1/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
