.class public interface abstract Le/f/a/n/o/d0/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/n/o/d0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# static fields
.field public static final a:Le/f/a/n/o/d0/a$b;

.field public static final b:Le/f/a/n/o/d0/a$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/f/a/n/o/d0/a$b$a;

    invoke-direct {v0}, Le/f/a/n/o/d0/a$b$a;-><init>()V

    sput-object v0, Le/f/a/n/o/d0/a$b;->a:Le/f/a/n/o/d0/a$b;

    .line 2
    sput-object v0, Le/f/a/n/o/d0/a$b;->b:Le/f/a/n/o/d0/a$b;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Throwable;)V
.end method
