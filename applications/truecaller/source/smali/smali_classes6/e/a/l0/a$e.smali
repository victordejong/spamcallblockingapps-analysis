.class public final Le/a/l0/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l0/a;->k(Ljava/lang/String;JJLcom/truecaller/calling/dialer/call_log/data/HistoryEventsScope;)Le/a/r2/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/c0<",
        "Le/a/l0/u/d/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Le/a/l0/a$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/l0/a$e;

    invoke-direct {v0}, Le/a/l0/a$e;-><init>()V

    sput-object v0, Le/a/l0/a$e;->a:Le/a/l0/a$e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/l0/u/d/b;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void
.end method
