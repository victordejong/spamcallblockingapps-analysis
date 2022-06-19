.class public Le/q/f/a/c/c;
.super Le/q/f/a/c/e;
.source "SourceFile"


# instance fields
.field public d:Lorg/json/JSONArray;

.field public e:Lorg/json/JSONArray;

.field public f:Lorg/json/JSONArray;

.field public g:Le/q/f/a/c/b;

.field public h:Le/q/f/a/c/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Le/q/f/a/c/e;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/q/f/a/c/e;-><init>()V

    .line 2
    iput-object p1, p0, Le/q/f/a/c/c;->d:Lorg/json/JSONArray;

    .line 3
    iput-object p2, p0, Le/q/f/a/c/c;->e:Lorg/json/JSONArray;

    .line 4
    iput-object p3, p0, Le/q/f/a/c/c;->f:Lorg/json/JSONArray;

    return-void
.end method
