.class public final Le/m/a/c/p1/w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/p1/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/p1/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Le/m/a/c/p1/l;
    .locals 1

    .line 1
    new-instance v0, Le/m/a/c/p1/w;

    invoke-direct {v0}, Le/m/a/c/p1/w;-><init>()V

    return-object v0
.end method
