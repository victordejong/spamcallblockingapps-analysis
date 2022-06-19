.class public abstract Le/m/b/x/a/e/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/b/x/a/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public final a:Le/m/b/x/b/t;

.field public b:Le/m/b/x/b/p;

.field public final c:Le/m/b/x/d/s;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/m/b/x/b/t;Ljava/lang/String;Ljava/lang/String;Le/m/b/x/d/s;Le/m/b/x/b/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Le/m/b/x/a/e/a$a;->a:Le/m/b/x/b/t;

    .line 4
    iput-object p4, p0, Le/m/b/x/a/e/a$a;->c:Le/m/b/x/d/s;

    .line 5
    invoke-virtual {p0, p2}, Le/m/b/x/a/e/a$a;->a(Ljava/lang/String;)Le/m/b/x/a/e/a$a;

    .line 6
    invoke-virtual {p0, p3}, Le/m/b/x/a/e/a$a;->b(Ljava/lang/String;)Le/m/b/x/a/e/a$a;

    .line 7
    iput-object p5, p0, Le/m/b/x/a/e/a$a;->b:Le/m/b/x/b/p;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Le/m/b/x/a/e/a$a;
.end method

.method public abstract b(Ljava/lang/String;)Le/m/b/x/a/e/a$a;
.end method
