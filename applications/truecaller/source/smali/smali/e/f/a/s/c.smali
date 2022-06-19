.class public final Le/f/a/s/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/f;


# static fields
.field public static final b:Le/f/a/s/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/f/a/s/c;

    invoke-direct {v0}, Le/f/a/s/c;-><init>()V

    sput-object v0, Le/f/a/s/c;->b:Le/f/a/s/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/security/MessageDigest;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EmptySignature"

    return-object v0
.end method
