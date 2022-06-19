.class public final Le/m/f/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/f/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 1
    const-class v0, Le/m/f/a/c;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
