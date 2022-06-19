.class public Le/f/a/r/l/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/r/l/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/a/r/l/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/f/a/r/l/d<",
        "TR;>;"
    }
.end annotation


# static fields
.field public static final a:Le/f/a/r/l/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/r/l/c<",
            "*>;"
        }
    .end annotation
.end field

.field public static final b:Le/f/a/r/l/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/r/l/e<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/f/a/r/l/c;

    invoke-direct {v0}, Le/f/a/r/l/c;-><init>()V

    sput-object v0, Le/f/a/r/l/c;->a:Le/f/a/r/l/c;

    .line 2
    new-instance v0, Le/f/a/r/l/c$a;

    invoke-direct {v0}, Le/f/a/r/l/c$a;-><init>()V

    sput-object v0, Le/f/a/r/l/c;->b:Le/f/a/r/l/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Le/f/a/r/l/d$a;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
