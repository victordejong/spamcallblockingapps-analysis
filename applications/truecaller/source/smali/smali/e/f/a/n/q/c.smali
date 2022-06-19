.class public final Le/f/a/n/q/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/f/a/n/m<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final b:Le/f/a/n/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/n/m<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/f/a/n/q/c;

    invoke-direct {v0}, Le/f/a/n/q/c;-><init>()V

    sput-object v0, Le/f/a/n/q/c;->b:Le/f/a/n/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Le/f/a/n/o/w;II)Le/f/a/n/o/w;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/f/a/n/o/w<",
            "TT;>;II)",
            "Le/f/a/n/o/w<",
            "TT;>;"
        }
    .end annotation

    return-object p2
.end method

.method public b(Ljava/security/MessageDigest;)V
    .locals 0

    return-void
.end method
