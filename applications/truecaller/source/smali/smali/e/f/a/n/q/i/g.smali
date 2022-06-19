.class public Le/f/a/n/q/i/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/q/i/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/f/a/n/q/i/e<",
        "TZ;TZ;>;"
    }
.end annotation


# static fields
.field public static final a:Le/f/a/n/q/i/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/q/i/g<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/f/a/n/q/i/g;

    invoke-direct {v0}, Le/f/a/n/q/i/g;-><init>()V

    sput-object v0, Le/f/a/n/q/i/g;->a:Le/f/a/n/q/i/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/f/a/n/o/w;Le/f/a/n/i;)Le/f/a/n/o/w;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/o/w<",
            "TZ;>;",
            "Le/f/a/n/i;",
            ")",
            "Le/f/a/n/o/w<",
            "TZ;>;"
        }
    .end annotation

    return-object p1
.end method
