.class public final Le/a/i/d0/d$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/d0/d;-><init>(Ls1/w/f;Lo3/a;Le/a/u3/g;Le/a/p5/c;Le/a/p5/u;Le/a/p5/g;Le/a/q2/a;Lo3/a;Lo3/a;)V
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
.field public static final b:Le/a/i/d0/d$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/i/d0/d$d;

    invoke-direct {v0}, Le/a/i/d0/d$d;-><init>()V

    sput-object v0, Le/a/i/d0/d$d;->b:Le/a/i/d0/d$d;

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
    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->n(Lq3/a/p1;I)Lq3/a/y;

    move-result-object v0

    return-object v0
.end method
