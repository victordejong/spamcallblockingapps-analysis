.class public final Le/a/k0/l/d$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k0/l/d;-><init>(Ls1/w/f;Le/a/k0/m/a;Le/a/k0/l/f;Le/a/k0/a/b;Le/a/k0/l/h;Le/a/p5/c;Le/a/k0/i/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lq3/a/y;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Le/a/k0/l/d$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/k0/l/d$a;

    invoke-direct {v0}, Le/a/k0/l/d$a;-><init>()V

    sput-object v0, Le/a/k0/l/d$a;->b:Le/a/k0/l/d$a;

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

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1, v0}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object v0

    return-object v0
.end method
