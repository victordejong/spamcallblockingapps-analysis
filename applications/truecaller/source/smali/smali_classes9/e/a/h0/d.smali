.class public final synthetic Le/a/h0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/c0;


# static fields
.field public static final synthetic a:Le/a/h0/d;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/h0/d;

    invoke-direct {v0}, Le/a/h0/d;-><init>()V

    sput-object v0, Le/a/h0/d;->a:Le/a/h0/d;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Le/a/h0/w/b;

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void
.end method
