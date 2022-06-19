.class public abstract Le/k/a/c/n0/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/c/n0/s$a;,
        Le/k/a/c/n0/s$b;
    }
.end annotation


# static fields
.field public static final a:Le/k/a/c/n0/s;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/n0/s$b;

    invoke-direct {v0}, Le/k/a/c/n0/s$b;-><init>()V

    sput-object v0, Le/k/a/c/n0/s;->a:Le/k/a/c/n0/s;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method
