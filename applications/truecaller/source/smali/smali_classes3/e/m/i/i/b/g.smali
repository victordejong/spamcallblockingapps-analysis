.class public abstract Le/m/i/i/b/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Le/m/i/i/b/g;


# instance fields
.field public final a:Le/m/i/i/b/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Le/m/i/i/b/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Le/m/i/i/b/e;-><init>(Le/m/i/i/b/g;II)V

    sput-object v0, Le/m/i/i/b/g;->b:Le/m/i/i/b/g;

    return-void
.end method

.method public constructor <init>(Le/m/i/i/b/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/i/i/b/g;->a:Le/m/i/i/b/g;

    return-void
.end method


# virtual methods
.method public abstract a(Le/m/i/j/a;[B)V
.end method
