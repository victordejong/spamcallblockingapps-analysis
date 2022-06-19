.class public Le/a/c0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v1, "description"

    const-string v3, "variantKey"

    const-string v5, "seenEvent"

    const-string v7, "convertedEvent"

    move-object v0, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p4

    invoke-static/range {v0 .. v7}, Le/d/c/a/a;->J0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c0/g;->a:Ljava/lang/String;

    iput-object p2, p0, Le/a/c0/g;->b:Ljava/lang/String;

    iput-object p3, p0, Le/a/c0/g;->c:Ljava/lang/String;

    iput-object p4, p0, Le/a/c0/g;->d:Ljava/lang/String;

    return-void
.end method
